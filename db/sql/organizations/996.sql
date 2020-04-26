
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
      'Dallas Regional Medical Center ',
      '1011 N Galloway Ave
Mesquite, TX 75149',
      'Mesquite ',
      'TX',
      'Attention: Lisa Fox',
      'No',
      '32.7784533',
      '-96.6004473'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dallas Regional Medical Center '
        AND o.latitude = '32.7784533'
        AND o.longitude = '-96.6004473'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dallas Regional Medical Center '
        AND o.latitude = '32.7784533'
        AND o.longitude = '-96.6004473'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dallas Regional Medical Center '
        AND o.latitude = '32.7784533'
        AND o.longitude = '-96.6004473'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dallas Regional Medical Center '
        AND o.latitude = '32.7784533'
        AND o.longitude = '-96.6004473'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dallas Regional Medical Center '
        AND o.latitude = '32.7784533'
        AND o.longitude = '-96.6004473'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dallas Regional Medical Center '
        AND o.latitude = '32.7784533'
        AND o.longitude = '-96.6004473'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dallas Regional Medical Center '
        AND o.latitude = '32.7784533'
        AND o.longitude = '-96.6004473'));

COMMIT;
