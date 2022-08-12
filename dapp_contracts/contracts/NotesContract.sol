// SPDX-License-Identifier: MIT
pragma solidity >=0.4.16 <0.9.0;

contract NotesContract {
    uint256 public noteCount = 0;

    struct Note {
        uint256 id;
        string title;
        string description;
    }

    mapping(uint256 => Note) public notes;

    event NoteCreated(uint256 id, string title, string description);
    event NoteDeleted(uint256 id);

    function createNote(string memory _title, string memory _description)
        public
    {
        notes[noteCount] = Note(noteCount, _title, _description);
        emit NoteCreated(noteCount, _title, _description);

        noteCount++;
    }

    function deleteNote(uint256 _id) public {
        // Data Location not specified with uint

        // Data on Blockchain can never be deleted
        delete notes[_id];
        emit NoteDeleted(_id);
    }
}
