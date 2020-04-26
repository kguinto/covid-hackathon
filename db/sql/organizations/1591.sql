
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
      'Providence St. Vincent Hospital',
      '2755 SE 33rd Pl
Portland, OR 97202',
      'Portland',
      'OR',
      'Front porch of a house.',
      'Yes',
      '45.5027014',
      '-122.6308023'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence St. Vincent Hospital'
        AND o.latitude = '45.5027014'
        AND o.longitude = '-122.6308023'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence St. Vincent Hospital'
        AND o.latitude = '45.5027014'
        AND o.longitude = '-122.6308023'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence St. Vincent Hospital'
        AND o.latitude = '45.5027014'
        AND o.longitude = '-122.6308023'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence St. Vincent Hospital'
        AND o.latitude = '45.5027014'
        AND o.longitude = '-122.6308023'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence St. Vincent Hospital'
        AND o.latitude = '45.5027014'
        AND o.longitude = '-122.6308023'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence St. Vincent Hospital'
        AND o.latitude = '45.5027014'
        AND o.longitude = '-122.6308023'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence St. Vincent Hospital'
        AND o.latitude = '45.5027014'
        AND o.longitude = '-122.6308023'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence St. Vincent Hospital'
        AND o.latitude = '45.5027014'
        AND o.longitude = '-122.6308023'));

COMMIT;
