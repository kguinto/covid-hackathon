
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
      'Urgent Care of Westchester',
      '155 White Plains Rd
Tarrytown, NY 10591',
      'Tarrytown',
      'NY',
      '',
      'Unsure',
      '41.0645418',
      '-73.8576194'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Urgent Care of Westchester'
        AND o.latitude = '41.0645418'
        AND o.longitude = '-73.8576194'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Urgent Care of Westchester'
        AND o.latitude = '41.0645418'
        AND o.longitude = '-73.8576194'));

COMMIT;
