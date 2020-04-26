
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
      'Lakemary Center',
      '100 Lakemary Dr
Paola, KS 66071',
      'Paola',
      'KS',
      '100 Lakemary Drive',
      'No',
      '38.5689134',
      '-94.8607372'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lakemary Center'
        AND o.latitude = '38.5689134'
        AND o.longitude = '-94.8607372'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lakemary Center'
        AND o.latitude = '38.5689134'
        AND o.longitude = '-94.8607372'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lakemary Center'
        AND o.latitude = '38.5689134'
        AND o.longitude = '-94.8607372'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lakemary Center'
        AND o.latitude = '38.5689134'
        AND o.longitude = '-94.8607372'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lakemary Center'
        AND o.latitude = '38.5689134'
        AND o.longitude = '-94.8607372'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lakemary Center'
        AND o.latitude = '38.5689134'
        AND o.longitude = '-94.8607372'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lakemary Center'
        AND o.latitude = '38.5689134'
        AND o.longitude = '-94.8607372'));

COMMIT;
