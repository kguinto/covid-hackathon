
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
      'Conifer Park',
      '556 S Clinton Ave
Rochester, NY 14620',
      'Rochester',
      'NY',
      '',
      'Yes',
      '43.1464801',
      '-77.6018275'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Conifer Park'
        AND o.latitude = '43.1464801'
        AND o.longitude = '-77.6018275'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Conifer Park'
        AND o.latitude = '43.1464801'
        AND o.longitude = '-77.6018275'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Conifer Park'
        AND o.latitude = '43.1464801'
        AND o.longitude = '-77.6018275'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Conifer Park'
        AND o.latitude = '43.1464801'
        AND o.longitude = '-77.6018275'));

COMMIT;
