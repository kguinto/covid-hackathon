
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
      'Community Option Inc. ',
      '137 Mathews Street, Suite 1500
Greensburg, PA, 15601',
      'Greensburg',
      'PA',
      'Front of the building drop off is acceptable. Call 724-331-3890 for assistance',
      'Yes',
      '40.3351141',
      '-79.550707'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Option Inc. '
        AND o.latitude = '40.3351141'
        AND o.longitude = '-79.550707'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Option Inc. '
        AND o.latitude = '40.3351141'
        AND o.longitude = '-79.550707'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Option Inc. '
        AND o.latitude = '40.3351141'
        AND o.longitude = '-79.550707'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Option Inc. '
        AND o.latitude = '40.3351141'
        AND o.longitude = '-79.550707'));

COMMIT;
