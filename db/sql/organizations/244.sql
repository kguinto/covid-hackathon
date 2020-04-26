
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
      'Inova Fairfax Emergency Department',
      '3300 Gallows Rd
Falls Church, VA 22042',
      'Falls Church',
      'VA',
      'Email sakib.motalib@gmail.com prior to drop off to coordinate location and time please.',
      '',
      '38.8573966',
      '-77.2281251'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Inova Fairfax Emergency Department'
        AND o.latitude = '38.8573966'
        AND o.longitude = '-77.2281251'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Inova Fairfax Emergency Department'
        AND o.latitude = '38.8573966'
        AND o.longitude = '-77.2281251'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Inova Fairfax Emergency Department'
        AND o.latitude = '38.8573966'
        AND o.longitude = '-77.2281251'));

COMMIT;
