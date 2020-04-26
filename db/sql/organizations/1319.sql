
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
      'Josephine Caring Community',
      '9901 272nd Pl NW
Stanwood, WA 98292',
      'Stanwood',
      'WA',
      '',
      'Yes',
      '48.24441',
      '-122.367296'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Josephine Caring Community'
        AND o.latitude = '48.24441'
        AND o.longitude = '-122.367296'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Josephine Caring Community'
        AND o.latitude = '48.24441'
        AND o.longitude = '-122.367296'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Josephine Caring Community'
        AND o.latitude = '48.24441'
        AND o.longitude = '-122.367296'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Josephine Caring Community'
        AND o.latitude = '48.24441'
        AND o.longitude = '-122.367296'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Josephine Caring Community'
        AND o.latitude = '48.24441'
        AND o.longitude = '-122.367296'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Josephine Caring Community'
        AND o.latitude = '48.24441'
        AND o.longitude = '-122.367296'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Josephine Caring Community'
        AND o.latitude = '48.24441'
        AND o.longitude = '-122.367296'));

COMMIT;
