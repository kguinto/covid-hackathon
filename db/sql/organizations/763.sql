
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
      'NYC Health and Hospitals, Bellevue',
      '462 1st Avenue 
New York, NY 10016',
      'New York',
      'NY',
      'Attn: Emergency Command Center',
      'Yes if the items are unused',
      '40.7390729',
      '-73.9750165'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'NYC Health and Hospitals, Bellevue'
        AND o.latitude = '40.7390729'
        AND o.longitude = '-73.9750165'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'NYC Health and Hospitals, Bellevue'
        AND o.latitude = '40.7390729'
        AND o.longitude = '-73.9750165'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'NYC Health and Hospitals, Bellevue'
        AND o.latitude = '40.7390729'
        AND o.longitude = '-73.9750165'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'NYC Health and Hospitals, Bellevue'
        AND o.latitude = '40.7390729'
        AND o.longitude = '-73.9750165'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'NYC Health and Hospitals, Bellevue'
        AND o.latitude = '40.7390729'
        AND o.longitude = '-73.9750165'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'NYC Health and Hospitals, Bellevue'
        AND o.latitude = '40.7390729'
        AND o.longitude = '-73.9750165'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'NYC Health and Hospitals, Bellevue'
        AND o.latitude = '40.7390729'
        AND o.longitude = '-73.9750165'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'NYC Health and Hospitals, Bellevue'
        AND o.latitude = '40.7390729'
        AND o.longitude = '-73.9750165'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'NYC Health and Hospitals, Bellevue'
        AND o.latitude = '40.7390729'
        AND o.longitude = '-73.9750165'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'NYC Health and Hospitals, Bellevue'
        AND o.latitude = '40.7390729'
        AND o.longitude = '-73.9750165'));

COMMIT;
