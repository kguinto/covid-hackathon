
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
      'Old Main Village',
      '301 S 5th St
Mankato, MN 56001',
      'Mankata',
      'MN',
      'Leave at front desk',
      'Yes',
      '44.161698',
      '-93.9998826'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Old Main Village'
        AND o.latitude = '44.161698'
        AND o.longitude = '-93.9998826'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Old Main Village'
        AND o.latitude = '44.161698'
        AND o.longitude = '-93.9998826'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Old Main Village'
        AND o.latitude = '44.161698'
        AND o.longitude = '-93.9998826'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Old Main Village'
        AND o.latitude = '44.161698'
        AND o.longitude = '-93.9998826'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Old Main Village'
        AND o.latitude = '44.161698'
        AND o.longitude = '-93.9998826'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Old Main Village'
        AND o.latitude = '44.161698'
        AND o.longitude = '-93.9998826'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Old Main Village'
        AND o.latitude = '44.161698'
        AND o.longitude = '-93.9998826'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Old Main Village'
        AND o.latitude = '44.161698'
        AND o.longitude = '-93.9998826'));

COMMIT;
