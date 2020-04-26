
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
      'Geisinger Health System ',
      '100 N Academy Ave
Danville, PA 17822',
      'Danville',
      'PA',
      'Shipping/Receiving areas at each of our hospital facilities across Pennsylvania',
      'Yes',
      '40.9677777',
      '-76.6053472'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Geisinger Health System '
        AND o.latitude = '40.9677777'
        AND o.longitude = '-76.6053472'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Geisinger Health System '
        AND o.latitude = '40.9677777'
        AND o.longitude = '-76.6053472'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Geisinger Health System '
        AND o.latitude = '40.9677777'
        AND o.longitude = '-76.6053472'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Geisinger Health System '
        AND o.latitude = '40.9677777'
        AND o.longitude = '-76.6053472'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Geisinger Health System '
        AND o.latitude = '40.9677777'
        AND o.longitude = '-76.6053472'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Geisinger Health System '
        AND o.latitude = '40.9677777'
        AND o.longitude = '-76.6053472'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Geisinger Health System '
        AND o.latitude = '40.9677777'
        AND o.longitude = '-76.6053472'));

COMMIT;
