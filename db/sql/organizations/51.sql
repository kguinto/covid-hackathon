
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
      'Montefiore Medical Center, Emergency Department',
      '3411 Wayne Ave, Fl 6
The Bronx, NY 10467',
      'New York - Bronx',
      'NY',
      'Please email asanglim@montefiore.org or call 646-477-5635',
      'Unknown',
      '40.8799745',
      '-73.8782466'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Montefiore Medical Center, Emergency Department'
        AND o.latitude = '40.8799745'
        AND o.longitude = '-73.8782466'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Montefiore Medical Center, Emergency Department'
        AND o.latitude = '40.8799745'
        AND o.longitude = '-73.8782466'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Montefiore Medical Center, Emergency Department'
        AND o.latitude = '40.8799745'
        AND o.longitude = '-73.8782466'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('gown',
    (SELECT id FROM organizations o
      WHERE o.name = 'Montefiore Medical Center, Emergency Department'
        AND o.latitude = '40.8799745'
        AND o.longitude = '-73.8782466'));

COMMIT;
