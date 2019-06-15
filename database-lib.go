// +build wflib

/*
 * Copyright © 2019 A Bunch Tell LLC.
 *
 * This file is part of WriteFreely.
 *
 * WriteFreely is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License, included
 * in the LICENSE file in this source code package.
 */

// This file contains dummy database funcs for when writefreely is used as a
// library.

package writefreely

func (db *datastore) isDuplicateKeyErr(err error) bool {
	return false
}
