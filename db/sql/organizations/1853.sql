
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
      'Ascension SouthEast Michigan',
      '28000 Dequindre Rd
Warren, MI 48092',
      'Warren',
      'MI',
      'Donation box located at center building entrance facing Dequindre under the portico',
      'Yes',
      '42.4977181',
      '-83.084039'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ascension SouthEast Michigan'
        AND o.latitude = '42.4977181'
        AND o.longitude = '-83.084039'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ascension SouthEast Michigan'
        AND o.latitude = '42.4977181'
        AND o.longitude = '-83.084039'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ascension SouthEast Michigan'
        AND o.latitude = '42.4977181'
        AND o.longitude = '-83.084039'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ascension SouthEast Michigan'
        AND o.latitude = '42.4977181'
        AND o.longitude = '-83.084039'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ascension SouthEast Michigan'
        AND o.latitude = '42.4977181'
        AND o.longitude = '-83.084039'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ascension SouthEast Michigan'
        AND o.latitude = '42.4977181'
        AND o.longitude = '-83.084039'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ascension SouthEast Michigan'
        AND o.latitude = '42.4977181'
        AND o.longitude = '-83.084039'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ascension SouthEast Michigan'
        AND o.latitude = '42.4977181'
        AND o.longitude = '-83.084039'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ascension SouthEast Michigan'
        AND o.latitude = '42.4977181'
        AND o.longitude = '-83.084039'));

COMMIT;
