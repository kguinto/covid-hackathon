
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
      'Friendship Village',
      '350 West Schaumburg Road
Schaumburg, IL 60194',
      'Schaumburg',
      'IL',
      'Please put my name on it. Audrey Owens',
      'Yes',
      '42.0290212',
      '-88.0861637'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Friendship Village'
        AND o.latitude = '42.0290212'
        AND o.longitude = '-88.0861637'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Friendship Village'
        AND o.latitude = '42.0290212'
        AND o.longitude = '-88.0861637'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Friendship Village'
        AND o.latitude = '42.0290212'
        AND o.longitude = '-88.0861637'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Friendship Village'
        AND o.latitude = '42.0290212'
        AND o.longitude = '-88.0861637'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Friendship Village'
        AND o.latitude = '42.0290212'
        AND o.longitude = '-88.0861637'));

COMMIT;
