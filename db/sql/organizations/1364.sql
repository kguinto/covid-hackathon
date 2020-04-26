
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
      'Watchung Pediatrics ',
      '76 Old Stirling Rd
Warren, NJ 07059',
      'Warren ',
      'NJ',
      'Front door ',
      'If new, open boxes are fine ',
      '40.6456196',
      '-74.4744977'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Watchung Pediatrics '
        AND o.latitude = '40.6456196'
        AND o.longitude = '-74.4744977'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Watchung Pediatrics '
        AND o.latitude = '40.6456196'
        AND o.longitude = '-74.4744977'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Watchung Pediatrics '
        AND o.latitude = '40.6456196'
        AND o.longitude = '-74.4744977'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Watchung Pediatrics '
        AND o.latitude = '40.6456196'
        AND o.longitude = '-74.4744977'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Watchung Pediatrics '
        AND o.latitude = '40.6456196'
        AND o.longitude = '-74.4744977'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Watchung Pediatrics '
        AND o.latitude = '40.6456196'
        AND o.longitude = '-74.4744977'));

COMMIT;
