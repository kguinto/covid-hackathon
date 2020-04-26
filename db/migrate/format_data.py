"""
 This scripts generates sql/organization/*.sql files based on organizations found in data.json
"""

import json

with open('data.json') as f:
    DATA = json.load(f)['values']

    for d in DATA.len():
        name = d[5]
        address = d[6]
        city = d[8]
        state = d[9]
        instructions = d[10]
        needs = d[11]
        accepts_opened = d[12]
        latitude = d[13]

        insert = 'INSERT INTO '
        try:
            longitude = d[14]
        except Exception:
            longitude = ''
        res['rows'].append({
            'name': name,
            'address': address,
            'city': city,
            'state': state,
            'instructions': instructions,
            'needs': needs,
            'accepts_opened': accepts_opened,
            'latitude': latitude,
            'longitude': longitude
        })

        with open('{}.sql'.format('foo'), 'w') as outfile:
            json.dump(res, outfile)
