
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
      'Excel Urgent Care of East Northport',
      '558 Larkfield Rd
East Northport, NY 11731',
      'East Northport',
      'NY',
      '',
      'Yes',
      '40.858359',
      '-73.3198848'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Excel Urgent Care of East Northport'
        AND o.latitude = '40.858359'
        AND o.longitude = '-73.3198848'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Excel Urgent Care of East Northport'
        AND o.latitude = '40.858359'
        AND o.longitude = '-73.3198848'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Excel Urgent Care of East Northport'
        AND o.latitude = '40.858359'
        AND o.longitude = '-73.3198848'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Excel Urgent Care of East Northport'
        AND o.latitude = '40.858359'
        AND o.longitude = '-73.3198848'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Excel Urgent Care of East Northport'
        AND o.latitude = '40.858359'
        AND o.longitude = '-73.3198848'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Excel Urgent Care of East Northport'
        AND o.latitude = '40.858359'
        AND o.longitude = '-73.3198848'));

COMMIT;
