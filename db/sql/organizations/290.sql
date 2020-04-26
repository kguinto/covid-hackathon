
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
      'East Orange General Hospital',
      '300 Central Ave
East Orange, NJ 07018',
      'East Orange',
      'NJ',
      'Drop off or mail to address',
      'Yes',
      '40.7545333',
      '-74.2138513'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'East Orange General Hospital'
        AND o.latitude = '40.7545333'
        AND o.longitude = '-74.2138513'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'East Orange General Hospital'
        AND o.latitude = '40.7545333'
        AND o.longitude = '-74.2138513'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'East Orange General Hospital'
        AND o.latitude = '40.7545333'
        AND o.longitude = '-74.2138513'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'East Orange General Hospital'
        AND o.latitude = '40.7545333'
        AND o.longitude = '-74.2138513'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'East Orange General Hospital'
        AND o.latitude = '40.7545333'
        AND o.longitude = '-74.2138513'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'East Orange General Hospital'
        AND o.latitude = '40.7545333'
        AND o.longitude = '-74.2138513'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'East Orange General Hospital'
        AND o.latitude = '40.7545333'
        AND o.longitude = '-74.2138513'));

COMMIT;
