
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
      'Clinton County Probation Dept.',
      '34 Court Street
Plattsburgh, NY 12901',
      'Plattsburgh',
      'NY',
      '34 Court Street, Plattsburgh, NY 12901 Attn:  Director of Probation  Drop Off in lobby.',
      'Yes',
      '44.6988591',
      '-73.4536462'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Clinton County Probation Dept.'
        AND o.latitude = '44.6988591'
        AND o.longitude = '-73.4536462'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Clinton County Probation Dept.'
        AND o.latitude = '44.6988591'
        AND o.longitude = '-73.4536462'));

COMMIT;
