
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
      'Staten Island University Hospital / Northwell Health',
      '475 Seaview Ave
Staten Island, NY 10305',
      'Staten Island',
      'NY',
      'Please contact 718-226-9000 (hospital directory) for further direction!',
      'Unsure',
      '40.5847086',
      '-74.086124'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Staten Island University Hospital / Northwell Health'
        AND o.latitude = '40.5847086'
        AND o.longitude = '-74.086124'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Staten Island University Hospital / Northwell Health'
        AND o.latitude = '40.5847086'
        AND o.longitude = '-74.086124'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Staten Island University Hospital / Northwell Health'
        AND o.latitude = '40.5847086'
        AND o.longitude = '-74.086124'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Staten Island University Hospital / Northwell Health'
        AND o.latitude = '40.5847086'
        AND o.longitude = '-74.086124'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Staten Island University Hospital / Northwell Health'
        AND o.latitude = '40.5847086'
        AND o.longitude = '-74.086124'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Staten Island University Hospital / Northwell Health'
        AND o.latitude = '40.5847086'
        AND o.longitude = '-74.086124'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Staten Island University Hospital / Northwell Health'
        AND o.latitude = '40.5847086'
        AND o.longitude = '-74.086124'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Staten Island University Hospital / Northwell Health'
        AND o.latitude = '40.5847086'
        AND o.longitude = '-74.086124'));

COMMIT;
