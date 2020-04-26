
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
      'SSM Health St. Anthony Shawnee Hospital',
      '1102 W. MacArthur St
Shawnee, OK 74804',
      'Shawnee',
      'OK',
      'Bring to ER, Attn: Terri Hudlow ',
      'Yes',
      '35.3628951',
      '-96.9375193'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'SSM Health St. Anthony Shawnee Hospital'
        AND o.latitude = '35.3628951'
        AND o.longitude = '-96.9375193'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'SSM Health St. Anthony Shawnee Hospital'
        AND o.latitude = '35.3628951'
        AND o.longitude = '-96.9375193'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'SSM Health St. Anthony Shawnee Hospital'
        AND o.latitude = '35.3628951'
        AND o.longitude = '-96.9375193'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'SSM Health St. Anthony Shawnee Hospital'
        AND o.latitude = '35.3628951'
        AND o.longitude = '-96.9375193'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'SSM Health St. Anthony Shawnee Hospital'
        AND o.latitude = '35.3628951'
        AND o.longitude = '-96.9375193'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'SSM Health St. Anthony Shawnee Hospital'
        AND o.latitude = '35.3628951'
        AND o.longitude = '-96.9375193'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'SSM Health St. Anthony Shawnee Hospital'
        AND o.latitude = '35.3628951'
        AND o.longitude = '-96.9375193'));

COMMIT;
