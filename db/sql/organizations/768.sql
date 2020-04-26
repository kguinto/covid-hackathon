
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
      'Anaheim Global Medical Center',
      '1025 S Anaheim Blvd
Anaheim, CA 92805',
      'Anaheim',
      'CA',
      'Drop off at ED Ambulance bay. Upon arrival, contact ED registration to notify ED charge RN on duty',
      'No',
      '33.8196827',
      '-117.9097961'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Anaheim Global Medical Center'
        AND o.latitude = '33.8196827'
        AND o.longitude = '-117.9097961'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Anaheim Global Medical Center'
        AND o.latitude = '33.8196827'
        AND o.longitude = '-117.9097961'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Anaheim Global Medical Center'
        AND o.latitude = '33.8196827'
        AND o.longitude = '-117.9097961'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Anaheim Global Medical Center'
        AND o.latitude = '33.8196827'
        AND o.longitude = '-117.9097961'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Anaheim Global Medical Center'
        AND o.latitude = '33.8196827'
        AND o.longitude = '-117.9097961'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Anaheim Global Medical Center'
        AND o.latitude = '33.8196827'
        AND o.longitude = '-117.9097961'));

COMMIT;
