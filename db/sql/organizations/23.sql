
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
      'St Charles Healthcare System ',
      '2500 NE Neff Rd
Bend, OR 97701',
      'Bend ',
      'OR',
      'Attention to Dr. Campos: hematology oncology entrance through the heart and lung center ',
      'Yes',
      '44.0679885',
      '-121.2694821'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Charles Healthcare System '
        AND o.latitude = '44.0679885'
        AND o.longitude = '-121.2694821'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Charles Healthcare System '
        AND o.latitude = '44.0679885'
        AND o.longitude = '-121.2694821'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Charles Healthcare System '
        AND o.latitude = '44.0679885'
        AND o.longitude = '-121.2694821'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Charles Healthcare System '
        AND o.latitude = '44.0679885'
        AND o.longitude = '-121.2694821'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Charles Healthcare System '
        AND o.latitude = '44.0679885'
        AND o.longitude = '-121.2694821'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Charles Healthcare System '
        AND o.latitude = '44.0679885'
        AND o.longitude = '-121.2694821'));

COMMIT;
