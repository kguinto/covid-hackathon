
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
      'Portland Fire & Rescue',
      '1300 SE Gideon St
Portland, OR 97202',
      'Portland',
      'OR',
      'Between the hours of noon-4 pm Monday - Friday',
      'N/A',
      '45.5020094',
      '-122.6529073'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Portland Fire & Rescue'
        AND o.latitude = '45.5020094'
        AND o.longitude = '-122.6529073'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Portland Fire & Rescue'
        AND o.latitude = '45.5020094'
        AND o.longitude = '-122.6529073'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Portland Fire & Rescue'
        AND o.latitude = '45.5020094'
        AND o.longitude = '-122.6529073'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Portland Fire & Rescue'
        AND o.latitude = '45.5020094'
        AND o.longitude = '-122.6529073'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Portland Fire & Rescue'
        AND o.latitude = '45.5020094'
        AND o.longitude = '-122.6529073'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Portland Fire & Rescue'
        AND o.latitude = '45.5020094'
        AND o.longitude = '-122.6529073'));

COMMIT;
