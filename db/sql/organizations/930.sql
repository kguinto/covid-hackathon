
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
      'Berkeley Citizens ',
      '1301 Old Highway 52 South
Moncks Corner, SC 29461',
      'Moncks Corner',
      'SC',
      '1301 Old Highway 52 South',
      'Yes',
      '33.1760405',
      '-80.0089946'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Berkeley Citizens '
        AND o.latitude = '33.1760405'
        AND o.longitude = '-80.0089946'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Berkeley Citizens '
        AND o.latitude = '33.1760405'
        AND o.longitude = '-80.0089946'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Berkeley Citizens '
        AND o.latitude = '33.1760405'
        AND o.longitude = '-80.0089946'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Berkeley Citizens '
        AND o.latitude = '33.1760405'
        AND o.longitude = '-80.0089946'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Berkeley Citizens '
        AND o.latitude = '33.1760405'
        AND o.longitude = '-80.0089946'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Berkeley Citizens '
        AND o.latitude = '33.1760405'
        AND o.longitude = '-80.0089946'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Berkeley Citizens '
        AND o.latitude = '33.1760405'
        AND o.longitude = '-80.0089946'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Berkeley Citizens '
        AND o.latitude = '33.1760405'
        AND o.longitude = '-80.0089946'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Berkeley Citizens '
        AND o.latitude = '33.1760405'
        AND o.longitude = '-80.0089946'));

COMMIT;
