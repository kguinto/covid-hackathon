
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
      'St Luke''s Hospital - Warren Campus',
      '185 Roseberry St
Phillipsburg, NJ 08865',
      'Phillipsburg',
      'NJ',
      'Drop off at ED',
      'Yes',
      '40.702113',
      '-75.178597'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Luke''s Hospital - Warren Campus'
        AND o.latitude = '40.702113'
        AND o.longitude = '-75.178597'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Luke''s Hospital - Warren Campus'
        AND o.latitude = '40.702113'
        AND o.longitude = '-75.178597'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Luke''s Hospital - Warren Campus'
        AND o.latitude = '40.702113'
        AND o.longitude = '-75.178597'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Luke''s Hospital - Warren Campus'
        AND o.latitude = '40.702113'
        AND o.longitude = '-75.178597'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Luke''s Hospital - Warren Campus'
        AND o.latitude = '40.702113'
        AND o.longitude = '-75.178597'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Luke''s Hospital - Warren Campus'
        AND o.latitude = '40.702113'
        AND o.longitude = '-75.178597'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Luke''s Hospital - Warren Campus'
        AND o.latitude = '40.702113'
        AND o.longitude = '-75.178597'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Luke''s Hospital - Warren Campus'
        AND o.latitude = '40.702113'
        AND o.longitude = '-75.178597'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Luke''s Hospital - Warren Campus'
        AND o.latitude = '40.702113'
        AND o.longitude = '-75.178597'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Luke''s Hospital - Warren Campus'
        AND o.latitude = '40.702113'
        AND o.longitude = '-75.178597'));

COMMIT;
