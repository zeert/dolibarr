-- ============================================================================
-- Copyright (C) 2009 Laurent Destailleur  <eldy@users.sourceforge.net>
-- Copyright (C) 2010 Regis Houssin        <regis@dolibarr.fr>
--
-- This program is free software; you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation; either version 2 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program; if not, write to the Free Software
-- Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.
--
-- $Id$
--
-- ============================================================================


ALTER TABLE llx_projet_task ADD INDEX idx_projet_task_fk_projet (fk_projet);
ALTER TABLE llx_projet_task ADD INDEX idx_projet_task_fk_user_creat (fk_user_creat);
ALTER TABLE llx_projet_task ADD INDEX idx_projet_task_fk_user_valid (fk_user_valid);

ALTER TABLE llx_projet_task ADD CONSTRAINT fk_projet_task_fk_projet 	FOREIGN KEY (fk_projet) REFERENCES llx_projet (rowid);
ALTER TABLE llx_projet_task ADD CONSTRAINT fk_projet_task_fk_user_creat FOREIGN KEY (fk_user_creat) REFERENCES llx_user (rowid);
ALTER TABLE llx_projet_task ADD CONSTRAINT fk_projet_task_fk_user_valid FOREIGN KEY (fk_user_valid) REFERENCES llx_user (rowid);