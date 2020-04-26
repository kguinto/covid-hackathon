
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
      'Saint francis medical center',
      '3630 E Imperial Hwy
Lynwood, CA 90262',
      'Lynnwood ',
      'CA',
      'Icu department ',
      'Yes',
      '33.930826',
      '-118.203228'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint francis medical center'
        AND o.latitude = '33.930826'
        AND o.longitude = '-118.203228'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint francis medical center'
        AND o.latitude = '33.930826'
        AND o.longitude = '-118.203228'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint francis medical center'
        AND o.latitude = '33.930826'
        AND o.longitude = '-118.203228'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint francis medical center'
        AND o.latitude = '33.930826'
        AND o.longitude = '-118.203228'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint francis medical center'
        AND o.latitude = '33.930826'
        AND o.longitude = '-118.203228'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint francis medical center'
        AND o.latitude = '33.930826'
        AND o.longitude = '-118.203228'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint francis medical center'
        AND o.latitude = '33.930826'
        AND o.longitude = '-118.203228'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint francis medical center'
        AND o.latitude = '33.930826'
        AND o.longitude = '-118.203228'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint francis medical center'
        AND o.latitude = '33.930826'
        AND o.longitude = '-118.203228'));

COMMIT;