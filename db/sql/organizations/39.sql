
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
      'Southwestern Medical Center',
      '100 Hospital Dr
Bennington, VT 05201',
      'Bennington',
      'VT',
      'Contact Ron Keefer, Director of Materials Management at 802-447-5387 or ron.keefer@svhealthcare.org',
      'Unknown',
      '42.87397',
      '-73.207393'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Southwestern Medical Center'
        AND o.latitude = '42.87397'
        AND o.longitude = '-73.207393'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Southwestern Medical Center'
        AND o.latitude = '42.87397'
        AND o.longitude = '-73.207393'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Southwestern Medical Center'
        AND o.latitude = '42.87397'
        AND o.longitude = '-73.207393'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Southwestern Medical Center'
        AND o.latitude = '42.87397'
        AND o.longitude = '-73.207393'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Southwestern Medical Center'
        AND o.latitude = '42.87397'
        AND o.longitude = '-73.207393'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('disinfectant wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Southwestern Medical Center'
        AND o.latitude = '42.87397'
        AND o.longitude = '-73.207393'));

COMMIT;
