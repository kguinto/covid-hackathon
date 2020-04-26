
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
      'One Medical ',
      '165 Smith St
Brooklyn, NY 11201',
      'New York - Brooklyn ',
      'NY',
      'No Weekend Deliveries, Attn: One Medical ',
      'No',
      '40.686131',
      '-73.9906895'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical '
        AND o.latitude = '40.686131'
        AND o.longitude = '-73.9906895'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical '
        AND o.latitude = '40.686131'
        AND o.longitude = '-73.9906895'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical '
        AND o.latitude = '40.686131'
        AND o.longitude = '-73.9906895'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical '
        AND o.latitude = '40.686131'
        AND o.longitude = '-73.9906895'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical '
        AND o.latitude = '40.686131'
        AND o.longitude = '-73.9906895'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical '
        AND o.latitude = '40.686131'
        AND o.longitude = '-73.9906895'));

COMMIT;
