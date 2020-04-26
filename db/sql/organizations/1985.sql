
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
      'Montefiore Medical Center',
      '3411 Wayne Ave #822
The Bronx, NY 10467',
      'Bronx',
      'NY',
      'Please call Asia Nieves at 718-741-2342 prior to drop-off.',
      'Yes',
      '40.8799745',
      '-73.8782466'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Montefiore Medical Center'
        AND o.latitude = '40.8799745'
        AND o.longitude = '-73.8782466'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Montefiore Medical Center'
        AND o.latitude = '40.8799745'
        AND o.longitude = '-73.8782466'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Montefiore Medical Center'
        AND o.latitude = '40.8799745'
        AND o.longitude = '-73.8782466'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Montefiore Medical Center'
        AND o.latitude = '40.8799745'
        AND o.longitude = '-73.8782466'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Montefiore Medical Center'
        AND o.latitude = '40.8799745'
        AND o.longitude = '-73.8782466'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Montefiore Medical Center'
        AND o.latitude = '40.8799745'
        AND o.longitude = '-73.8782466'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Montefiore Medical Center'
        AND o.latitude = '40.8799745'
        AND o.longitude = '-73.8782466'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Montefiore Medical Center'
        AND o.latitude = '40.8799745'
        AND o.longitude = '-73.8782466'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Montefiore Medical Center'
        AND o.latitude = '40.8799745'
        AND o.longitude = '-73.8782466'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Montefiore Medical Center'
        AND o.latitude = '40.8799745'
        AND o.longitude = '-73.8782466'));

COMMIT;
