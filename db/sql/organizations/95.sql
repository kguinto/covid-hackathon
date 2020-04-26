
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
      'Mount Sinai Hospital',
      '1468 Madison Ave.
New York, NY 10029',
      'New York - Manhattan',
      'NY',
      'See contacts and info at https://www.mountsinai.org/about/covid19/donations-supplies',
      'Yes',
      '40.7901407',
      '-73.9527505'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Sinai Hospital'
        AND o.latitude = '40.7901407'
        AND o.longitude = '-73.9527505'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Sinai Hospital'
        AND o.latitude = '40.7901407'
        AND o.longitude = '-73.9527505'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Sinai Hospital'
        AND o.latitude = '40.7901407'
        AND o.longitude = '-73.9527505'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Sinai Hospital'
        AND o.latitude = '40.7901407'
        AND o.longitude = '-73.9527505'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Sinai Hospital'
        AND o.latitude = '40.7901407'
        AND o.longitude = '-73.9527505'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Sinai Hospital'
        AND o.latitude = '40.7901407'
        AND o.longitude = '-73.9527505'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Sinai Hospital'
        AND o.latitude = '40.7901407'
        AND o.longitude = '-73.9527505'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Sinai Hospital'
        AND o.latitude = '40.7901407'
        AND o.longitude = '-73.9527505'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Sinai Hospital'
        AND o.latitude = '40.7901407'
        AND o.longitude = '-73.9527505'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Sinai Hospital'
        AND o.latitude = '40.7901407'
        AND o.longitude = '-73.9527505'));

COMMIT;
