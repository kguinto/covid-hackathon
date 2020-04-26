
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
      'Cambria Care Center',
      '429 Manor Drive
Ebensburg, PA 15931',
      'Ebensburg',
      'PA',
      '',
      'Yes',
      '40.4885802',
      '-78.7002285'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cambria Care Center'
        AND o.latitude = '40.4885802'
        AND o.longitude = '-78.7002285'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cambria Care Center'
        AND o.latitude = '40.4885802'
        AND o.longitude = '-78.7002285'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cambria Care Center'
        AND o.latitude = '40.4885802'
        AND o.longitude = '-78.7002285'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cambria Care Center'
        AND o.latitude = '40.4885802'
        AND o.longitude = '-78.7002285'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cambria Care Center'
        AND o.latitude = '40.4885802'
        AND o.longitude = '-78.7002285'));

COMMIT;
