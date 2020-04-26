
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
      'Lompoc Valley Medical Center',
      '1515 E Ocean Ave
Lompoc, CA 93436',
      'Lompoc',
      'CA',
      'Drop off at the loading dock.',
      'Yes',
      '34.6411375',
      '-120.4395191'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lompoc Valley Medical Center'
        AND o.latitude = '34.6411375'
        AND o.longitude = '-120.4395191'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lompoc Valley Medical Center'
        AND o.latitude = '34.6411375'
        AND o.longitude = '-120.4395191'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lompoc Valley Medical Center'
        AND o.latitude = '34.6411375'
        AND o.longitude = '-120.4395191'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lompoc Valley Medical Center'
        AND o.latitude = '34.6411375'
        AND o.longitude = '-120.4395191'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lompoc Valley Medical Center'
        AND o.latitude = '34.6411375'
        AND o.longitude = '-120.4395191'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lompoc Valley Medical Center'
        AND o.latitude = '34.6411375'
        AND o.longitude = '-120.4395191'));

COMMIT;
