
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
      'Conifer Park, Inc',
      '2435 6th Ave
Troy, NY 12180',
      'Troy',
      'NY',
      ' mailing attn joe lacoppola',
      'Yes',
      '42.7404519',
      '-73.6834775'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Conifer Park, Inc'
        AND o.latitude = '42.7404519'
        AND o.longitude = '-73.6834775'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Conifer Park, Inc'
        AND o.latitude = '42.7404519'
        AND o.longitude = '-73.6834775'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Conifer Park, Inc'
        AND o.latitude = '42.7404519'
        AND o.longitude = '-73.6834775'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Conifer Park, Inc'
        AND o.latitude = '42.7404519'
        AND o.longitude = '-73.6834775'));

COMMIT;
