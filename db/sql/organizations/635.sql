
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
      'Horizon Home Care',
      '1001 Giesau Dr.
Ontonagon, MI 49953',
      'Ontonagon',
      'MI',
      '',
      'No',
      '46.860182',
      '-89.2996196'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Horizon Home Care'
        AND o.latitude = '46.860182'
        AND o.longitude = '-89.2996196'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Horizon Home Care'
        AND o.latitude = '46.860182'
        AND o.longitude = '-89.2996196'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Horizon Home Care'
        AND o.latitude = '46.860182'
        AND o.longitude = '-89.2996196'));

COMMIT;
