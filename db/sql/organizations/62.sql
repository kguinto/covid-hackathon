
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
      'New York Community Hospital',
      '2525 Kings Hwy
Brooklyn NY 11229',
      'New York - Brooklyn',
      'NY',
      'Please look for Donna Fitzmartin Director',
      'Yes',
      '40.6137918',
      '-73.9483509'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'New York Community Hospital'
        AND o.latitude = '40.6137918'
        AND o.longitude = '-73.9483509'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'New York Community Hospital'
        AND o.latitude = '40.6137918'
        AND o.longitude = '-73.9483509'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'New York Community Hospital'
        AND o.latitude = '40.6137918'
        AND o.longitude = '-73.9483509'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'New York Community Hospital'
        AND o.latitude = '40.6137918'
        AND o.longitude = '-73.9483509'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'New York Community Hospital'
        AND o.latitude = '40.6137918'
        AND o.longitude = '-73.9483509'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'New York Community Hospital'
        AND o.latitude = '40.6137918'
        AND o.longitude = '-73.9483509'));

COMMIT;
