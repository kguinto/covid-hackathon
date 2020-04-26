
BEGIN;

INSERT INTO organizations
    (
      name,
      address,
      city,
      state,
      instructions,
      accepts_opened,
      latitude,
      longitude
    )
  VALUES
    (
      'WakeMed Raleigh Campus',
      '3024 New Bern Ave, Suite G03
Raleigh, NC 27610',
      'Raleigh',
      'NC',
      '',
      'Yes',
      '35.7861875',
      '-78.5875089'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'WakeMed Raleigh Campus'
        AND o.latitude = '35.7861875'
        AND o.longitude = '-78.5875089'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'WakeMed Raleigh Campus'
        AND o.latitude = '35.7861875'
        AND o.longitude = '-78.5875089'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'WakeMed Raleigh Campus'
        AND o.latitude = '35.7861875'
        AND o.longitude = '-78.5875089'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'WakeMed Raleigh Campus'
        AND o.latitude = '35.7861875'
        AND o.longitude = '-78.5875089'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'WakeMed Raleigh Campus'
        AND o.latitude = '35.7861875'
        AND o.longitude = '-78.5875089'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'WakeMed Raleigh Campus'
        AND o.latitude = '35.7861875'
        AND o.longitude = '-78.5875089'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'WakeMed Raleigh Campus'
        AND o.latitude = '35.7861875'
        AND o.longitude = '-78.5875089'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'WakeMed Raleigh Campus'
        AND o.latitude = '35.7861875'
        AND o.longitude = '-78.5875089'));

COMMIT;
