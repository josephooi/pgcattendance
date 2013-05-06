pgcattendance app by Joseph Ooi

This application is set up to track attendance for the Penn Glee Club.

pgcattendance runs Devise with 2 types (roles) of Users - Admin (with special privileges) and Member (without special privileges).

The app is initialized with 2 default Admin accounts. The first is the main Admin account to be used for administrative purposes,
and the second is a backup Admin account in case the first account is compromised. The Admin account login details are:
1) email: "admin@admin.com" /// password: "test1234"
2) email: "emergency@emergency.com" /// password: "test1234

The 3 main models that are accessible to users are Sections, Events and Conflicts.

Initially, before logging in, Sections and Events may be viewed, but not edited. The edit forms are also not accessible even if one
tries to go directly to the edit url. Conflicts may not be viewed before logging in.

Once a Member logs in, he/she will be able to view his/her OWN Conflicts. Section and Event editing is still unavailable. The Member
will also be able to create and edit his/her own Conflicts. When he/she creates a new Conflict, it will automatically be associated
with him/her (thus, it is viewable by him/her and only him/her and Admin accounts).

When an Admin is logged in, the Admin will be able to view ALL Conflicts. The Admin will also be able to view and edit all other 
elements, including Sections and Events.