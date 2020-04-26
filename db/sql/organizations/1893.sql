
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
      'Aultman Hospital ',
      '2600 6th St SW
Canton, OH 44710',
      'Canton',
      'OH',
      'Please contact Orlando Goncalves via Email for drop off instructions : orlando.goncalves@aultman.com',
      'Yes',
      '40.7967119',
      '-81.4037873'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Aultman Hospital '
        AND o.latitude = '40.7967119'
        AND o.longitude = '-81.4037873'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Aultman Hospital '
        AND o.latitude = '40.7967119'
        AND o.longitude = '-81.4037873'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Aultman Hospital '
        AND o.latitude = '40.7967119'
        AND o.longitude = '-81.4037873'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Aultman Hospital '
        AND o.latitude = '40.7967119'
        AND o.longitude = '-81.4037873'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Aultman Hospital '
        AND o.latitude = '40.7967119'
        AND o.longitude = '-81.4037873'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Aultman Hospital '
        AND o.latitude = '40.7967119'
        AND o.longitude = '-81.4037873'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Aultman Hospital '
        AND o.latitude = '40.7967119'
        AND o.longitude = '-81.4037873'));

COMMIT;
