
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
      'Conifer Park OTP',
      '526 Old Liverpool Rd
Liverpool, NY 13088',
      'Liverpool',
      'NY',
      'Waiting room / front desk. Workers are present. ',
      'Yes',
      '43.0895705',
      '-76.1890522'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Conifer Park OTP'
        AND o.latitude = '43.0895705'
        AND o.longitude = '-76.1890522'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Conifer Park OTP'
        AND o.latitude = '43.0895705'
        AND o.longitude = '-76.1890522'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Conifer Park OTP'
        AND o.latitude = '43.0895705'
        AND o.longitude = '-76.1890522'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Conifer Park OTP'
        AND o.latitude = '43.0895705'
        AND o.longitude = '-76.1890522'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Conifer Park OTP'
        AND o.latitude = '43.0895705'
        AND o.longitude = '-76.1890522'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Conifer Park OTP'
        AND o.latitude = '43.0895705'
        AND o.longitude = '-76.1890522'));

COMMIT;
