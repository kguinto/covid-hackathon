
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
      'Advanced Psychiatric Services of Central Florida',
      '3583 S Highlands Ave
Sebring, FL 33870',
      'Sebring',
      'FL',
      'Place next to door or on mailbox',
      'No',
      '27.466412',
      '-81.4343079'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Advanced Psychiatric Services of Central Florida'
        AND o.latitude = '27.466412'
        AND o.longitude = '-81.4343079'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Advanced Psychiatric Services of Central Florida'
        AND o.latitude = '27.466412'
        AND o.longitude = '-81.4343079'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Advanced Psychiatric Services of Central Florida'
        AND o.latitude = '27.466412'
        AND o.longitude = '-81.4343079'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Advanced Psychiatric Services of Central Florida'
        AND o.latitude = '27.466412'
        AND o.longitude = '-81.4343079'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Advanced Psychiatric Services of Central Florida'
        AND o.latitude = '27.466412'
        AND o.longitude = '-81.4343079'));

COMMIT;
