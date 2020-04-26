
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
      'Bethesda Lutheran Communities',
      '1600 Arboretum Blvd
Victoria, MN 55386',
      'Victoria',
      'MN',
      '1600 Arboretum Blvd.',
      'Yes',
      '44.8593412',
      '-93.6593497'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bethesda Lutheran Communities'
        AND o.latitude = '44.8593412'
        AND o.longitude = '-93.6593497'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bethesda Lutheran Communities'
        AND o.latitude = '44.8593412'
        AND o.longitude = '-93.6593497'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bethesda Lutheran Communities'
        AND o.latitude = '44.8593412'
        AND o.longitude = '-93.6593497'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bethesda Lutheran Communities'
        AND o.latitude = '44.8593412'
        AND o.longitude = '-93.6593497'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bethesda Lutheran Communities'
        AND o.latitude = '44.8593412'
        AND o.longitude = '-93.6593497'));

COMMIT;
