// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
//anum and struct
contract TicketBookingSystem {
    //1
    enum TicketType {
        Economy,
        Business,
        FirstClass
    }

    //2
    enum Days {
        Monday,
        Tuesday,
        Wednesday,
        Thursday,
        Friday,
        Saturday,
        Sunday
    }

    //3
    struct Ticket {
        string passenger;
        TicketType ticketType;
        Days day;
        bool isBooked;
    }

    //4
    Ticket[] public tickets;

    //5
    function bookTicket(
        string memory _passenger,
        TicketType _ticketType,
        Days _day
    ) public {
        tickets.push(Ticket(_passenger, _ticketType, _day, true));
    }

    //6
    function getTicketType(uint256 _index) public view returns (TicketType) {
        Ticket storage ticket = tickets[_index];
        return ticket.ticketType;
    }

    //7
    function getTicketDay(uint256 _index) public view returns (Days) {
        Ticket storage ticket = tickets[_index];
        return ticket.day;
    }

    //8
    function toggleStatus(uint256 _index) public {
        Ticket storage ticket = tickets[_index];
        ticket.isBooked = !ticket.isBooked;
    }
}
