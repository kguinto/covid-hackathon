
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
      'Jersey Shore University Medical Center',
      '1945 NJ-33
Neptune City, NJ 07753',
      'Neptune',
      'NJ',
      'Drive to ER entrance, front is closed to visitors.',
      'No',
      '40.2091347',
      '-74.041212'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jersey Shore University Medical Center'
        AND o.latitude = '40.2091347'
        AND o.longitude = '-74.041212'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jersey Shore University Medical Center'
        AND o.latitude = '40.2091347'
        AND o.longitude = '-74.041212'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jersey Shore University Medical Center'
        AND o.latitude = '40.2091347'
        AND o.longitude = '-74.041212'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jersey Shore University Medical Center'
        AND o.latitude = '40.2091347'
        AND o.longitude = '-74.041212'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jersey Shore University Medical Center'
        AND o.latitude = '40.2091347'
        AND o.longitude = '-74.041212'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jersey Shore University Medical Center'
        AND o.latitude = '40.2091347'
        AND o.longitude = '-74.041212'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jersey Shore University Medical Center'
        AND o.latitude = '40.2091347'
        AND o.longitude = '-74.041212'));

COMMIT;
