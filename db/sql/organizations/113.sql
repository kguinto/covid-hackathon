
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
      'Montefiore - Jack D. Weiler Hospital',
      '1825 Eastchester Road
Bronx, NY 10461',
      'New York - Bronx',
      'NY',
      '1825 Eastchester Road ',
      'Yes',
      '40.8491013',
      '-73.8461857'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Montefiore - Jack D. Weiler Hospital'
        AND o.latitude = '40.8491013'
        AND o.longitude = '-73.8461857'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Montefiore - Jack D. Weiler Hospital'
        AND o.latitude = '40.8491013'
        AND o.longitude = '-73.8461857'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Montefiore - Jack D. Weiler Hospital'
        AND o.latitude = '40.8491013'
        AND o.longitude = '-73.8461857'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Montefiore - Jack D. Weiler Hospital'
        AND o.latitude = '40.8491013'
        AND o.longitude = '-73.8461857'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Montefiore - Jack D. Weiler Hospital'
        AND o.latitude = '40.8491013'
        AND o.longitude = '-73.8461857'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Montefiore - Jack D. Weiler Hospital'
        AND o.latitude = '40.8491013'
        AND o.longitude = '-73.8461857'));

COMMIT;
