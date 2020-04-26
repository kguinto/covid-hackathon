
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
      'Salem Health Medical Clinic - Independence',
      '1430 Monmouth St
Independence, OR 97351',
      'Independence',
      'OR',
      'Delivery',
      'Unsure',
      '44.8515298',
      '-123.2072212'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Salem Health Medical Clinic - Independence'
        AND o.latitude = '44.8515298'
        AND o.longitude = '-123.2072212'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Salem Health Medical Clinic - Independence'
        AND o.latitude = '44.8515298'
        AND o.longitude = '-123.2072212'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Salem Health Medical Clinic - Independence'
        AND o.latitude = '44.8515298'
        AND o.longitude = '-123.2072212'));

COMMIT;
