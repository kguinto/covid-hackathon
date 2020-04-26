
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
      'Montefiore Department of Neurosurgery',
      '3316 Rochambeau Ave
The Bronx, NY 10467',
      'Bronx',
      'NY',
      'Curbside',
      'No',
      '40.8787216',
      '-73.8800837'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Montefiore Department of Neurosurgery'
        AND o.latitude = '40.8787216'
        AND o.longitude = '-73.8800837'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Montefiore Department of Neurosurgery'
        AND o.latitude = '40.8787216'
        AND o.longitude = '-73.8800837'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Montefiore Department of Neurosurgery'
        AND o.latitude = '40.8787216'
        AND o.longitude = '-73.8800837'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Montefiore Department of Neurosurgery'
        AND o.latitude = '40.8787216'
        AND o.longitude = '-73.8800837'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Montefiore Department of Neurosurgery'
        AND o.latitude = '40.8787216'
        AND o.longitude = '-73.8800837'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Montefiore Department of Neurosurgery'
        AND o.latitude = '40.8787216'
        AND o.longitude = '-73.8800837'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Montefiore Department of Neurosurgery'
        AND o.latitude = '40.8787216'
        AND o.longitude = '-73.8800837'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Montefiore Department of Neurosurgery'
        AND o.latitude = '40.8787216'
        AND o.longitude = '-73.8800837'));

COMMIT;
