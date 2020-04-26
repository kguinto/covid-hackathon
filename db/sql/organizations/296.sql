
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
      'Faster Care Detroit Urgent Care',
      '720 E Eleven Mile Rd
Royal Oak, MI 48067',
      'Royal Oak',
      'MI',
      'pick up, drop off',
      'Unsure',
      '42.4898693',
      '-83.1362103'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Faster Care Detroit Urgent Care'
        AND o.latitude = '42.4898693'
        AND o.longitude = '-83.1362103'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Faster Care Detroit Urgent Care'
        AND o.latitude = '42.4898693'
        AND o.longitude = '-83.1362103'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Faster Care Detroit Urgent Care'
        AND o.latitude = '42.4898693'
        AND o.longitude = '-83.1362103'));

COMMIT;
