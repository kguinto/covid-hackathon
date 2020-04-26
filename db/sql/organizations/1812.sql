
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
      'Exeter Hospital ',
      '5 Alumni Dr
Exeter, NH 03833',
      'Exeter ',
      'NH',
      '',
      'Yes',
      '42.9833965',
      '-70.9352553'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Exeter Hospital '
        AND o.latitude = '42.9833965'
        AND o.longitude = '-70.9352553'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Exeter Hospital '
        AND o.latitude = '42.9833965'
        AND o.longitude = '-70.9352553'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Exeter Hospital '
        AND o.latitude = '42.9833965'
        AND o.longitude = '-70.9352553'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Exeter Hospital '
        AND o.latitude = '42.9833965'
        AND o.longitude = '-70.9352553'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Exeter Hospital '
        AND o.latitude = '42.9833965'
        AND o.longitude = '-70.9352553'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Exeter Hospital '
        AND o.latitude = '42.9833965'
        AND o.longitude = '-70.9352553'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Exeter Hospital '
        AND o.latitude = '42.9833965'
        AND o.longitude = '-70.9352553'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Exeter Hospital '
        AND o.latitude = '42.9833965'
        AND o.longitude = '-70.9352553'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Exeter Hospital '
        AND o.latitude = '42.9833965'
        AND o.longitude = '-70.9352553'));

COMMIT;
