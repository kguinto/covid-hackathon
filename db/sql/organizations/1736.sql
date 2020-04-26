
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
      'avamere court at keizer',
      '5300 River Rd N
Keizer, OR 97303',
      'Keizer',
      'OR',
      'drop off at entrance of building #2, facing River Road',
      'Yes',
      '45.0012493',
      '-123.0250049'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'avamere court at keizer'
        AND o.latitude = '45.0012493'
        AND o.longitude = '-123.0250049'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'avamere court at keizer'
        AND o.latitude = '45.0012493'
        AND o.longitude = '-123.0250049'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'avamere court at keizer'
        AND o.latitude = '45.0012493'
        AND o.longitude = '-123.0250049'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'avamere court at keizer'
        AND o.latitude = '45.0012493'
        AND o.longitude = '-123.0250049'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'avamere court at keizer'
        AND o.latitude = '45.0012493'
        AND o.longitude = '-123.0250049'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'avamere court at keizer'
        AND o.latitude = '45.0012493'
        AND o.longitude = '-123.0250049'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'avamere court at keizer'
        AND o.latitude = '45.0012493'
        AND o.longitude = '-123.0250049'));

COMMIT;
