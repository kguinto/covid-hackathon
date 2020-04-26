
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
      'Bethel Visiting Nurse Association ',
      '70 Stony Hill Rd
Bethel, CT 06801',
      'Bethel',
      'CT',
      '70 Stony Hill Road',
      'Yes',
      '41.4147131',
      '-73.3797648'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bethel Visiting Nurse Association '
        AND o.latitude = '41.4147131'
        AND o.longitude = '-73.3797648'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bethel Visiting Nurse Association '
        AND o.latitude = '41.4147131'
        AND o.longitude = '-73.3797648'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bethel Visiting Nurse Association '
        AND o.latitude = '41.4147131'
        AND o.longitude = '-73.3797648'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bethel Visiting Nurse Association '
        AND o.latitude = '41.4147131'
        AND o.longitude = '-73.3797648'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bethel Visiting Nurse Association '
        AND o.latitude = '41.4147131'
        AND o.longitude = '-73.3797648'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bethel Visiting Nurse Association '
        AND o.latitude = '41.4147131'
        AND o.longitude = '-73.3797648'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bethel Visiting Nurse Association '
        AND o.latitude = '41.4147131'
        AND o.longitude = '-73.3797648'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bethel Visiting Nurse Association '
        AND o.latitude = '41.4147131'
        AND o.longitude = '-73.3797648'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bethel Visiting Nurse Association '
        AND o.latitude = '41.4147131'
        AND o.longitude = '-73.3797648'));

COMMIT;
