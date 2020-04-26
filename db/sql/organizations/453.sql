
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
      'Barnabas Health',
      '200 S Orange Ave
Livingston, NJ 07039',
      'Livingston ',
      'NJ',
      'Respiratory department',
      'No',
      '40.7735009',
      '-74.3565479'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Barnabas Health'
        AND o.latitude = '40.7735009'
        AND o.longitude = '-74.3565479'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Barnabas Health'
        AND o.latitude = '40.7735009'
        AND o.longitude = '-74.3565479'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Barnabas Health'
        AND o.latitude = '40.7735009'
        AND o.longitude = '-74.3565479'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Barnabas Health'
        AND o.latitude = '40.7735009'
        AND o.longitude = '-74.3565479'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Barnabas Health'
        AND o.latitude = '40.7735009'
        AND o.longitude = '-74.3565479'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Barnabas Health'
        AND o.latitude = '40.7735009'
        AND o.longitude = '-74.3565479'));

COMMIT;
