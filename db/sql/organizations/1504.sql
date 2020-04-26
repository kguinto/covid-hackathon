
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
      'Chase Brexton Health Services, Inc.',
      '1111 N Charles St
Baltimore, MD 21201',
      'Baltimore',
      'MD',
      'Drop off at the front entrance of the address listed above.',
      'Yes',
      '39.3029758',
      '-76.6155614'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chase Brexton Health Services, Inc.'
        AND o.latitude = '39.3029758'
        AND o.longitude = '-76.6155614'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chase Brexton Health Services, Inc.'
        AND o.latitude = '39.3029758'
        AND o.longitude = '-76.6155614'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chase Brexton Health Services, Inc.'
        AND o.latitude = '39.3029758'
        AND o.longitude = '-76.6155614'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chase Brexton Health Services, Inc.'
        AND o.latitude = '39.3029758'
        AND o.longitude = '-76.6155614'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chase Brexton Health Services, Inc.'
        AND o.latitude = '39.3029758'
        AND o.longitude = '-76.6155614'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chase Brexton Health Services, Inc.'
        AND o.latitude = '39.3029758'
        AND o.longitude = '-76.6155614'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chase Brexton Health Services, Inc.'
        AND o.latitude = '39.3029758'
        AND o.longitude = '-76.6155614'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chase Brexton Health Services, Inc.'
        AND o.latitude = '39.3029758'
        AND o.longitude = '-76.6155614'));

COMMIT;
