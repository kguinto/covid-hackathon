
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
      'Cameron Regional Medical Center',
      '1600 E Evergreen St
Cameron, MO 64429',
      'Cameron ',
      'MO',
      'Can mail to my attention, Tami Easton @ 1600 East Evergreen  Cameron, MO 64429 or drop off at the Emergency Room entrance.  ',
      'Yes',
      '39.7304455',
      '-94.2180385'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cameron Regional Medical Center'
        AND o.latitude = '39.7304455'
        AND o.longitude = '-94.2180385'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cameron Regional Medical Center'
        AND o.latitude = '39.7304455'
        AND o.longitude = '-94.2180385'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cameron Regional Medical Center'
        AND o.latitude = '39.7304455'
        AND o.longitude = '-94.2180385'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cameron Regional Medical Center'
        AND o.latitude = '39.7304455'
        AND o.longitude = '-94.2180385'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cameron Regional Medical Center'
        AND o.latitude = '39.7304455'
        AND o.longitude = '-94.2180385'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cameron Regional Medical Center'
        AND o.latitude = '39.7304455'
        AND o.longitude = '-94.2180385'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cameron Regional Medical Center'
        AND o.latitude = '39.7304455'
        AND o.longitude = '-94.2180385'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cameron Regional Medical Center'
        AND o.latitude = '39.7304455'
        AND o.longitude = '-94.2180385'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cameron Regional Medical Center'
        AND o.latitude = '39.7304455'
        AND o.longitude = '-94.2180385'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cameron Regional Medical Center'
        AND o.latitude = '39.7304455'
        AND o.longitude = '-94.2180385'));

COMMIT;
