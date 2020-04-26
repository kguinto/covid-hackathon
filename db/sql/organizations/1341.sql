
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
      'DOC-AID',
      '2438 Monarch Dr A375
Laredo, TX 78045',
      'Laredo',
      'TX',
      '2438 Monarch Drive
A375',
      'Yes',
      '27.6070169',
      '-99.4746044'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'DOC-AID'
        AND o.latitude = '27.6070169'
        AND o.longitude = '-99.4746044'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'DOC-AID'
        AND o.latitude = '27.6070169'
        AND o.longitude = '-99.4746044'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'DOC-AID'
        AND o.latitude = '27.6070169'
        AND o.longitude = '-99.4746044'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'DOC-AID'
        AND o.latitude = '27.6070169'
        AND o.longitude = '-99.4746044'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'DOC-AID'
        AND o.latitude = '27.6070169'
        AND o.longitude = '-99.4746044'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'DOC-AID'
        AND o.latitude = '27.6070169'
        AND o.longitude = '-99.4746044'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'DOC-AID'
        AND o.latitude = '27.6070169'
        AND o.longitude = '-99.4746044'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'DOC-AID'
        AND o.latitude = '27.6070169'
        AND o.longitude = '-99.4746044'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'DOC-AID'
        AND o.latitude = '27.6070169'
        AND o.longitude = '-99.4746044'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'DOC-AID'
        AND o.latitude = '27.6070169'
        AND o.longitude = '-99.4746044'));

COMMIT;
