
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
      'Citizens Medical Center',
      '7939 US-165
Columbia, LA 71418',
      'COLUMBIA',
      'LA',
      '7939 HWY 165',
      'No',
      '32.077444',
      '-92.094571'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Citizens Medical Center'
        AND o.latitude = '32.077444'
        AND o.longitude = '-92.094571'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Citizens Medical Center'
        AND o.latitude = '32.077444'
        AND o.longitude = '-92.094571'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Citizens Medical Center'
        AND o.latitude = '32.077444'
        AND o.longitude = '-92.094571'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Citizens Medical Center'
        AND o.latitude = '32.077444'
        AND o.longitude = '-92.094571'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Citizens Medical Center'
        AND o.latitude = '32.077444'
        AND o.longitude = '-92.094571'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Citizens Medical Center'
        AND o.latitude = '32.077444'
        AND o.longitude = '-92.094571'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Citizens Medical Center'
        AND o.latitude = '32.077444'
        AND o.longitude = '-92.094571'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Citizens Medical Center'
        AND o.latitude = '32.077444'
        AND o.longitude = '-92.094571'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Citizens Medical Center'
        AND o.latitude = '32.077444'
        AND o.longitude = '-92.094571'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Citizens Medical Center'
        AND o.latitude = '32.077444'
        AND o.longitude = '-92.094571'));

COMMIT;
