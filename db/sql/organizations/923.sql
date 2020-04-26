
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
      'Millcreek Community Hospital ',
      '5515 Peach St
Erie, PA 16509',
      'Erie',
      'PA',
      'Loading dock attention Bill',
      'Yes',
      '42.0776722',
      '-80.0926455'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Millcreek Community Hospital '
        AND o.latitude = '42.0776722'
        AND o.longitude = '-80.0926455'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Millcreek Community Hospital '
        AND o.latitude = '42.0776722'
        AND o.longitude = '-80.0926455'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Millcreek Community Hospital '
        AND o.latitude = '42.0776722'
        AND o.longitude = '-80.0926455'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Millcreek Community Hospital '
        AND o.latitude = '42.0776722'
        AND o.longitude = '-80.0926455'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Millcreek Community Hospital '
        AND o.latitude = '42.0776722'
        AND o.longitude = '-80.0926455'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Millcreek Community Hospital '
        AND o.latitude = '42.0776722'
        AND o.longitude = '-80.0926455'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Millcreek Community Hospital '
        AND o.latitude = '42.0776722'
        AND o.longitude = '-80.0926455'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Millcreek Community Hospital '
        AND o.latitude = '42.0776722'
        AND o.longitude = '-80.0926455'));

COMMIT;
